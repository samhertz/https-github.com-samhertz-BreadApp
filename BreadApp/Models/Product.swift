//
//  Bread.swift
//  BreadApp
//
//  Created by Samuel Hertz on 2/17/22.
//

import Foundation

class Product: Identifiable, Decodable {
    
    var uuid: UUID?
    var featured: Bool
    var type: String
    var name: String
    var brazilName: String
    var keywords: [String]
    var description: String
    var ingredients: [String]
    var servingSize: Int
    var totalServings: Int
    var calories: Int
    var totalFat: Int
    var saturatedFat: Int
    var cholesterol: Int
    var sodium: Int
    var carbohydrates: Int
    var fiber: Int
    var totalSugar: Int
    var addedSugar: Int
    var protein: Int
    var vitaminD: Int
    var calcium: Int
    var iron: Int
    var potassium: Int
    var cost: Double
    
}
