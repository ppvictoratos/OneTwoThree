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
                    Spacer(minLength: 30)
                    Text("OneTwoThree").font(.largeTitle).bold()
                    Spacer(minLength: 30)
                    VStack {
                    HStack{
                        Spacer()
                        Button(action: {self.gameModeRef = 0}){
                            Text("+").font(.largeTitle)
                        }
                        Spacer()
                        Button(action: {self.gameModeRef = 1}){
                            Text("-").font(.largeTitle)
                        }
                        Spacer()
                    }
                        Spacer(minLength: 15)
                    HStack{
                        Spacer()
                        Button(action: {self.gameModeRef = 2}){
                            Text("*").font(.largeTitle)
                        }
                        Spacer()
                        Button(action: {self.gameModeRef = 3}){
                            Text("/").font(.largeTitle)
                        }
                        Spacer()
                    }
                }
                    Spacer(minLength: 30)
                        NavigationLink(destination: GameView(gameModeRef: self.gameModeRef)){
                             Text("Go")
                        }
                    Spacer(minLength: 60)
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
