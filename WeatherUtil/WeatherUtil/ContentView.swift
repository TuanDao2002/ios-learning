//
//  ContentView.swift
//  WeatherUtil
//
//  Created by Tuan Dao on 16/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        NavigationView {
            List(DataModel.data, id: \.self ) { object in
                HStack {
                    Image("thumbnail")
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .foregroundColor(object.color)
                    Text("\(object.high)º F")
                        .foregroundColor(Color.blue)
                    NavigationLink(object.day, destination: DetailView(data: object))
                }
            }
            .navigationTitle("New York City")
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
