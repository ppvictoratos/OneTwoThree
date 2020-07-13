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
        WindowGroup {
            ContentView(
                store: Store(initialState: AppState(settings: GameMode(mathOperator: "add", id: UUID(), difficulty: 3)),
                             reducer: appReducer,
                             environment: AppEnvironment()))
        }
    }
}
