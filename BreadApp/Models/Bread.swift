//
//  Bread.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/17/22.
//

import Foundation

class Bread: Identifiable, Decodable {
    
    var uuid: UUID?
    var id: Int
    var name: String
    var brazilName: String
    var keywords: [String]
    var description: String
    var ingredients: [String]
    var servingSize: Int
    var totalServings: Int
    var calories: Int
    var protein : Int
    var carbohydrates: Int
    var cost: Double
    
}
