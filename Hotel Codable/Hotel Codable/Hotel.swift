//
//  Hotel.swift
//  Hotel Codable
//
//  Created by srishti  on 27/08/25.
//

import Foundation


struct RoomType : Equatable{
    var id : Int
    var name : String
    var shortName : String
    var price : Int
    // equatable protocol implementation for Roomtype.
    static func == (lhs : RoomType , rhs : RoomType ) -> Bool {
        return lhs.id == rhs.id
    }
    
    static var all : [RoomType]{
        return [
            RoomType(id: 0, name: "Two Queens", shortName: "2Q", price: 200),
            RoomType(id: 1, name: "One King", shortName: "K", price: 210),
            RoomType(id: 2, name: "Penthouse  Suite", shortName: "PHS", price: 250)
        ]
    }
}
