//
//  GameBoardView.swift
//  NoughtsAndCrosses
//
//  Created by Joyce Tao on 2022-05-02.
//

import SwiftUI

struct GameBoardView: View {
    
    // MARK: Stored properties
  
    // game bored state (all nine positions)
   // upper row
    @State var upperLeft = empty
    @State var upperMiddle = empty
    @State var upperRight = empty
    // middle row
    @State var middleLeft = empty
    @State var middleMiddle = empty
    @State var middleRight = empty
    //bottom row
    @State var bottomLeft = empty
    @State var bottomMiddle = empty
    @State var bottomRight = empty
    // MARK: Computed properties
    var body: some View {
        VStack {
            
            // Top row
            HStack {
                TileView(state: $upperLeft)
                TileView(state: $upperMiddle)
                TileView(state: $upperRight)
            }
            
            // Middle row
            HStack {
                TileView(state: $middleLeft)
                TileView(state: $middleMiddle)
                TileView(state: $middleRight)
            }
            
            // Bottom row
            HStack {
                TileView(state: $bottomLeft)
                TileView(state: $bottomMiddle)
                TileView(state: $bottomRight)
            }
            
        }
    }
}

struct GameBoardView_Previews: PreviewProvider {
    static var previews: some View {
        GameBoardView()
    }
}
