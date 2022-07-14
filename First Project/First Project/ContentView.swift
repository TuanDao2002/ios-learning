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
            Color(.gray).edgesIgnoringSafeArea(.all)
            GifImage("pokeball").scaledToFit()     .aspectRatio(contentMode: .fit)
            VStack{
                Image("The_Boys")
                    .resizable()
                    .padding(.horizontal, 60)
                    .padding(.vertical, 20)
                    .aspectRatio(contentMode: .fit)
                Spacer()
                Text("Oi!")
                    .font(.system(size: 40))
                    .fontWeight(.heavy)
                    .foregroundColor(.black)
                    .multilineTextAlignment(.center)
                Spacer()
                Image("Billy-Butcher")
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
            .previewInterfaceOrientation(.portrait)
    }
}
