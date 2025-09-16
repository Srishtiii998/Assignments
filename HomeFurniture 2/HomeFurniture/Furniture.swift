//
//  Furniture.swift
//  HomeFurniture
//
//  Created by Srishti on 18/08/25.
//
import Foundation

class Furniture {
    let name: String
    let description: String
    var imageData: Data?
    
    init(name: String, description: String, imageData: Data? = nil) {
        self.name = name
        self.description = description
        self.imageData = imageData
    }
}
