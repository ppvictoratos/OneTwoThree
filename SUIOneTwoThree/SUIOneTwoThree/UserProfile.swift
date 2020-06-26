//
//  UserProfile.swift
//  SUIOneTwoThree
//
//  Created by Peter Victoratos on 6/26/20.
//  Copyright © 2020 loveshakk. All rights reserved.
//

import SwiftUI

struct UserProfile: View {
    var body: some View {
    
        //VStack{
        VStack{
            Image(systemName: "person.crop.circle").resizable().edgesIgnoringSafeArea(.all).aspectRatio(CGSize(width: 9, height: 9), contentMode: .fit).padding(.bottom, 15)
            Text("UserName").font(.largeTitle)
        }.padding(/*@START_MENU_TOKEN@*/.all/*@END_MENU_TOKEN@*/, 60)
        //fancy animating graph of score over time will go here
        //}
        
        //next step: integrate sign in with apple
    }
}

struct UserProfile_Previews: PreviewProvider {
    static var previews: some View {
        UserProfile()
    }
}
