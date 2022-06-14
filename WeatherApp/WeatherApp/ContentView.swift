//
//  ContentView.swift
//  SwiftUIBasics
//
//  Created by Tuan Dao on 14/06/2022.
//

import SwiftUI

struct ContentView: View {
    var body: some View {
        VStack {
            Text("Weather")
                .font(.largeTitle)
                .fontWeight(.thin)
                .foregroundColor(Color.gray)
                .padding()
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Monday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)
            
            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Tuesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

            HStack {
                Image(systemName: "cloud.bolt.fill")
                    .foregroundColor(Color.gray)
                Text("Wednesday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Thursday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

            HStack {
                Image(systemName: "cloud.drizzle.fill")
                    .foregroundColor(Color.blue)
                Text("Friday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Saturday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

            HStack {
                Image(systemName: "sun.max.fill")
                    .foregroundColor(Color.orange)
                Text("Sunday")
                    .font(.body)
                    .fontWeight(.thin)
                    .foregroundColor(Color.black)
            }
            .padding(/*@START_MENU_TOKEN@*/.all, 4.0/*@END_MENU_TOKEN@*/)

        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}
