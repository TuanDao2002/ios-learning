//
//  DataModel.swift
//  WeatherUtil
//
//  Created by Tuan Dao on 16/06/2022.
//

import UIKit
import SwiftUI

struct WeatherData: Hashable {
    var id: Int
    var day: String
    var high: Int
    var low: Int
    var icon: String
    var color: Color
}

class DataModel: NSObject {
    static let data: [WeatherData] = [
        WeatherData(id: 1, day: "Monday", high: 80, low: 60, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 2, day: "Tuesday", high: 75, low: 62, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 3, day: "Wednesday", high: 60, low: 50, icon: "cloud.drizzle.fill", color: .blue),
        WeatherData(id: 4, day: "Thursday", high: 72, low: 61, icon: "cloud.fog.fill", color: .gray),
        WeatherData(id: 5, day: "Friday", high: 74, low: 65, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 6, day: "Saturday", high: 81, low: 63, icon: "sun.max.fill", color: .orange),
        WeatherData(id: 7, day: "Sunday", high: 79, low: 59, icon: "sun.max.fill", color: .orange)
    ]
}

