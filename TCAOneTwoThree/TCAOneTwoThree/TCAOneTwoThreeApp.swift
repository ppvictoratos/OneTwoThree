//
//  TCAOneTwoThreeApp.swift
//  TCAOneTwoThree
//
//  Created by Peter Victoratos on 7/13/20.
//

import ComposableArchitecture
import SwiftUI

@main
struct TCAOneTwoThreeApp: App {
    var body: some Scene {
        //first screen should be a sign up screen
        //implement sign in with apple
        //user can choose a username and photo
        //this will be visible on the user profile page along with their performance statistics
        
        //i want to create my own model for recognizing numbers
        WindowGroup {
            ContentView(
                store: Store(initialState: AppState(settings: GameMode(mathOperator: "add", id: UUID(), difficulty: 3)),
                             reducer: appReducer,
                             environment: AppEnvironment()))
        }
    }
}
