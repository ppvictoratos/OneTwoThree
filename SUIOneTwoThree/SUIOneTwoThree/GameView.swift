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
        
        //todo: put this title up top in big font
        Text(gameModeToText(modeRef: gameModeRef)).bold()
        
        //add: the necessary labels
        //score label
        
        //time label
        
        //num 1 label
        
        //operator label
        
        //num 2 label
        
        //Divider
        
        //keep space for the view that user will write in
        
        //Clear button
        
        //Enter button
    }
}

struct GameView_Previews: PreviewProvider {
    static var previews: some View {
        GameView(gameModeRef: 0)
    }
}
