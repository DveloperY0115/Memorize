//
//  MemorizeApp.swift
//  Memorize
//
//  Created by 유승우 on 2020/12/19.
//

import SwiftUI

@main
struct MemorizeApp: App {
    var body: some Scene {
        let game = EmojiMemoryGame()
        WindowGroup {
            ContentView(viewModel: game)
        }
    }
}
