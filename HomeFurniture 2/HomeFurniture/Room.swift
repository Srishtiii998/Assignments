//
//  Room.swift
//  HomeFurniture
//
//  Created by Srishti on 18/08/25.
//
import Foundation

class Room {
    let name: String
    let furniture: [Furniture]
    
    init(name: String, furniture: [Furniture]) {
        self.name = name
        self.furniture = furniture
    }
}
