//
//  GameView.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/19/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

func gameModeToText(modeRef: gameMode) -> [String] {
    var gameModeStatus: [String] = ["q","p"]
    
    if modeRef == .addition {
        gameModeStatus[0] = "Addition"
        gameModeStatus[1] = "+"
    }
    
    if modeRef == .subtraction {
        gameModeStatus[0] = "Subtraction"
        gameModeStatus[1] = "-"
    }
    
    if modeRef == .multiplication {
        gameModeStatus[0] = "Multiplication"
        gameModeStatus[1] = "×"
    }
    
    if modeRef == .division {
        gameModeStatus[0] = "Division"
        gameModeStatus[1] = "÷"
    }
    
    return gameModeStatus
}

//create a view for the touch model

struct GameView: View {
    @State var gameModeRef: gameMode
    
    var body: some View {
        
        VStack {
        //todo: put this title up top in big font
            Text(gameModeToText(modeRef: gameModeRef)[0]).bold().font(.largeTitle)
            
            HStack {
                Text("Score").font(.caption)
                Text("  |  ")
                Text("Timer").font(.caption)
            }
            
        Spacer(minLength: 20)
            
        HStack{
            Text("Num 1")
            Text(gameModeToText(modeRef: gameModeRef)[1])
            Text("Num 2")
            }
            
        UserInputView()
            
        Spacer()
        }
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameModeRef: gameMode.addition)
    }
}
