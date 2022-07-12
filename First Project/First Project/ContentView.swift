//
//  ContentView.swift
//  First Project
//
//  Created by Tuan Dao on 12/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        ZStack{
            Color(red: 0.03, green: 0.03, blue: 0.35).edgesIgnoringSafeArea(.all)
            VStack{
                Image("RMIT-logo")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("I Am Rich")
                    .font(.system(size: 40))
                    .fontWeight(.bold)
                    .foregroundColor(.white)
                Image("diamond")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                Spacer()
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
            .previewInterfaceOrientation(.portraitUpsideDown)
    }
}
