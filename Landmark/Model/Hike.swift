//
//  Hike.swift
//  Landmark
//
//  Created by Shashwat Kashyap on 29/11/23.
//

import Foundation


//struct Hike: Codable {
//    let name: String
//    let id: Int
//    let distance: Double
//    let difficulty: Int
//    let observations: [Observation]
//    
//    struct Observation: Codable {
//        let elevation: [Double]
//        let pace: [Double]
//        let heartRate: [Double]
//        let distanceFromStart: Double
//    }
//}
//
//
//var hikes: [Hike] = load("hikeData.json")


struct Hike: Codable, Hashable, Identifiable {
    var id: Int
    var name: String
    var distance: Double
    var difficulty: Int
    var observations: [Observation]


    static var formatter = LengthFormatter()


    var distanceText: String {
        Hike.formatter
            .string(fromValue: distance, unit: .kilometer)
    }


    struct Observation: Codable, Hashable {
        var distanceFromStart: Double


        var elevation: Range<Double>
        var pace: Range<Double>
        var heartRate: Range<Double>
    }
}
