//
//  ContentView.swift
//  TCAOneTwoThree
//
//  Created by Peter Victoratos on 7/13/20.
//

import SwiftUI
import ComposableArchitecture

struct GameMode: Equatable , Identifiable{
    var mathOperator = ""
    let id: UUID
    var difficulty = 1
}

enum GameModeAction {
    case operatorChanged(String)
    case difficultyChanged(Int)
}

struct GameModeEnvironment { }


struct AppState: Equatable {
    var settings: GameMode
}

enum AppAction {
    case modeOperatorChanged(operatorText: String)
    case modeDifficultyChanged(difficulty: Int)
}

struct AppEnvironment {
    
}

let appReducer = Reducer<AppState, AppAction, AppEnvironment> {
    state, action, environment in
    switch action {
    case .modeOperatorChanged(operatorText: let operatorText):
        state.settings.mathOperator = operatorText
        return .none
    case .modeDifficultyChanged(difficulty: let difficulty):
        state.settings.difficulty = difficulty
        return .none
    }
}.debug()


struct ContentView: View {
    let store: Store<AppState, AppAction>
    
    var body: some View {
        NavigationView {
            WithViewStore(self.store) { viewStore in
                VStack {
                    VStack {
                        Text("OneTwoThree").font(.largeTitle)
                        Spacer()
                        VStack {
                            HStack {
                                Button(action: {
                                    viewStore.send(.modeOperatorChanged(operatorText: "Add"))
                                }) {
                                    Text("+").font(.title).accentColor(.black)
                                }
                                Button(action: {
                                    viewStore.send(.modeOperatorChanged(operatorText: "Sub"))
                                }) {
                                    Text("-").font(.title).accentColor(.black)
                                }
                            }
                            HStack {
                                Button(action: {
                                    viewStore.send(.modeOperatorChanged(operatorText: "Mul"))
                                }) {
                                    Text("×").font(.title).accentColor(.black)
                                }
                                Button(action: {
                                    viewStore.send(.modeOperatorChanged(operatorText: "Div"))
                                }) {
                                    Text("÷").font(.title).accentColor(.black)
                                }
                            }
                            Slider(value: /*@START_MENU_TOKEN@*//*@PLACEHOLDER=Value@*/.constant(10)/*@END_MENU_TOKEN@*/).accentColor(.green)
                        }.padding(.all, 10)
                        Button(action: {}) {
                            Text("Go").font(.title).accentColor(.black)
                            //for now this button should reflect the values chosen by the user
                        }
                        Spacer()
                    }
                }.padding()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView(
            store: Store(initialState: AppState(settings: GameMode(mathOperator: "Add", id: UUID(), difficulty: 3)),
                         reducer: appReducer,
                         environment: AppEnvironment()))
    }
}
