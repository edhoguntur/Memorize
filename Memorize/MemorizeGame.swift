//
//  MemorizeGame.swift
//  Memorize
//
//  Created by Edho Guntur Adhitama on 15/12/23.
//

import Foundation

struct MemorizeGame<CardContent> {
    var cards: Array<Card>
    
    func choose(card: Card) {
        
    }
    
    struct Card {
        var isFaceUp: Bool
        var isMatched: Bool
        var content: CardContent
    }
}
