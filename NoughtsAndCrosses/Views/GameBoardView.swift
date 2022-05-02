//
//  GameBoardView.swift
//  NoughtsAndCrosses
//
//  Created by Joyce Tao on 2022-05-02.
//

import SwiftUI

struct GameBoardView: View {
    
    // MARK: Stored properties
    
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // Top row
            HStack {
                TileView(state: nought)
                TileView(state: cross)
                TileView(state: nought)
            }
            
            // Middle row
            HStack {
                TileView(state: cross)
                TileView(state: cross)
                TileView(state: nought)
            }
            
            // Bottom row
            HStack {
                TileView(state: empty)
                TileView(state: nought)
                TileView(state: nought)
            }
            
        }
    }
}

struct GameBoardView_Previews: PreviewProvider {
    static var previews: some View {
        GameBoardView()
    }
}
