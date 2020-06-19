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

//have a global state that changes the game mode
//for now have each button mutate the state

struct MainMenu: View {
    @State var gameModeRef: Int
    
    var body: some View {
            NavigationView{
                VStack{
                    Text("OneTwoThree").bold()
                    VStack {
                    HStack{
                        Button(action: {self.gameModeRef = 0}){
                            Text("Addition")
                        }
                        Button(action: {self.gameModeRef = 1}){
                            Text("Subtraction")
                        }
                    }
                    HStack{
                        Button(action: {self.gameModeRef = 2}){
                            Text("Multiplication")
                        }
                        Button(action: {self.gameModeRef = 3}){
                            Text("Division")
                        }
                    }
                }
                    NavigationLink(destination: GameView()){
                         Text("Go")
                    }

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
