//
//  MainMenu.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/17/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

enum gameMode {
    case addition
    case subtraction
    case multiplication
    case division
}

//or should i have a state?
//public @State var gameMode: Int

struct MainMenu: View {
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

struct MainMenu_Previews: PreviewProvider {
    static var previews: some View {
        MainMenu()
    }
}

//Create a Game View that has:
//a mode selector
//a difficulty selector
//starts out as a whiteboard, with all operators shown
//a background that changes color based upon mode & generates more
    //operator signs dependent on how difficult
