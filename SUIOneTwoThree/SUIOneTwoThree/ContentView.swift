//
//  ContentView.swift
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

enum difficulty {
    case easy
    case medium
    case hard
}

struct ContentView: View {
    @State var gameModeRef: gameMode
    @State var difficultyRef: difficulty
    
    var body: some View {
        NavigationView{
        ZStack{
            Image("green").resizable().edgesIgnoringSafeArea(.all)
        VStack{
            Text("OneTwoThree").font(Font.custom("Chalkduster", size: 45))
                .foregroundColor(Color.white)
                .fontWeight(.bold)
                    VStack {
                        Spacer()
                    HStack{
                        Spacer()
                        Button(action: {self.gameModeRef = gameMode.addition}){
                            Text("+").font(Font.custom("Chalkduster", size: 80))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Button(action: {self.gameModeRef = gameMode.subtraction}){
                            Text("-").font(Font.custom("Chalkduster", size: 80))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                        Spacer(minLength: 15)
                    HStack{
                        Spacer()
                        Button(action: {self.gameModeRef = gameMode.multiplication}){
                            Text("x").font(Font.custom("Chalkduster", size: 80))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                        Spacer()
                        Button(action: {self.gameModeRef = gameMode.division}){
                            Text("÷").font(Font.custom("Chalkduster", size: 80))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                        Spacer()
                    }
                        Spacer()
                        HStack{
                            Spacer()
                            Button("Easy"){
                                difficultyRef = difficulty.easy
                            }.font(Font.custom("Chalkduster", size: 20)).foregroundColor(.white)
                            Spacer()
                            Button("Medium"){
                                difficultyRef = difficulty.medium
                            }.font(Font.custom("Chalkduster", size: 20)).foregroundColor(.white)
                            Spacer()
                            Button("Hard"){
                                difficultyRef = difficulty.hard
                            }.font(Font.custom("Chalkduster", size: 20)).foregroundColor(.white)
                            Spacer()
                        }

                }
                    Spacer(minLength: 30)
            NavigationLink(destination: GameView(gameMode: gameMode.addition, difficulty: difficultyRef)){
                            Text("Go").font(Font.custom("Chalkduster", size: 30))
                                .foregroundColor(Color.white)
                                .fontWeight(.bold)
                        }
                    Spacer(minLength: 60)
                    }
            }
    }
    }
    
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(gameModeRef: gameMode.addition, difficultyRef: difficulty.easy)
    }
}
