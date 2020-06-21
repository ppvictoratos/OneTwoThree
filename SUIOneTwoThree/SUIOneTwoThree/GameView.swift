//
//  GameView.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/19/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

func gameModeToText(modeRef: Int) -> String {
    var gameModeName: String = ""
    
    if modeRef == 0 {
        gameModeName = "Addition"
    }
    
    if modeRef == 1 {
        gameModeName = "Subtraction"
    }
    
    if modeRef == 2 {
        gameModeName = "Multiplication"
    }
    
    if modeRef == 3 {
        gameModeName = "Division"
    }
    
    return gameModeName
}

//create a view for the touch model

struct GameView: View {
    @State var gameModeRef: Int
    
    var body: some View {
        
        VStack {
        //todo: put this title up top in big font
        Text(gameModeToText(modeRef: gameModeRef)).bold().font(.largeTitle)
            
            HStack {
                Text("Score").font(.caption)
                Text("  |  ")
                Text("Timer").font(.caption)
            }
            
        Spacer(minLength: 20)
            
        HStack{
            Text("Num 1")
            Text("•")
            Text("Num 2")
            }
            
        UserInputView()
            
        Spacer()
        }
        //keep space for the view that user will write in
        
        //Clear button
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameModeRef: 0)
    }
}
