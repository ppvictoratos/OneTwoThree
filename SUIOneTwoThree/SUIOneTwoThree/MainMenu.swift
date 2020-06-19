//
//  MainMenu.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/17/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

enum gameMode {
    case addition      //0
    case subtraction   //1
    case multiplication//2
    case division      //3
}

//Should NavLink to the game screen dependent on the game mode selected
var profileButton: some View {
    Button(action: {print(gameMode.addition)}){
        Text("hey")
    }
}

//have a global state that changes the game mode
//for now have each button mutate the state

struct MainMenu: View {
    @State var gameModeRef: Int
    
    var body: some View {
        VStack{
            HStack{
                profileButton
                profileButton
            }
            HStack{
                profileButton
                profileButton
            }
            Button(action: {print(gameMode.addition)}){
                Text("Go")
            }
        }
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu(gameModeRef: 0)
    }
}

//Create a Game View that has:

//a mode selector.. sliders?
//what looks the best?
//a difficulty selector
//a start button
//starts out as a whiteboard, with all operators shown

// BY SUNDAY ^^^^^^
// AFTER SUNDAY vvvvv
//a background that changes color based upon mode & generates more
    //operator signs dependent on how difficult
