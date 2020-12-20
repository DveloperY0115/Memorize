//
//  MemoryGame.swift
//  Memorize
//
//  Created by 유승우 on 2020/12/20.
//

import Foundation

struct MemoryGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        print("card chosen: \(card)")
    }

    init(numberOfPairsOfCards: Int, cardContentFactory: () -> CardContent) {
        cards = Array<Card>()    // create an empty array of cards
        for pairIndex in 0..<numberOfPairsOfCards {
            let content = cardContentFactory()
            cards.append(Card(content: content, id: pairIndex*2))
            cards.append(Card(content: content, id: pairIndex*2+1))
        }
        cards.shuffle()
    }
    
    // nested struct. full name : MemoryGame.Card
    struct Card: Identifiable {
        var isFaceUp: Bool = true
        var isMatched: Bool = false
        var content: CardContent
        var id: Int
    }
}
