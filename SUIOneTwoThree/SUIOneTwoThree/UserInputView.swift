//
//  UserInputView.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/21/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

struct UserInputView: View {
    var body: some View {
        VStack{
            Rectangle().foregroundColor(.white)
            
            HStack {
                Spacer()
                
                Button(action: {
                    print("yo")
                }){
                    Text("Clear")
                }.accentColor(.white)
                
                Spacer()
                
                Button(action: {
                    print("yo")
                }){
                    Text("Enter")
                }.accentColor(.white)
                
                Spacer()
            }

        }
    }
}

struct UserInputView_Previews: PreviewProvider {
    static var previews: some View {
        UserInputView()
    }
}
