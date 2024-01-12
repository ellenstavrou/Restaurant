//
//  MenuItems.swift
//  The Menu App
//
//  Created by Ellen Stavrou on 18/06/2023.
//

import Foundation

struct MenuItem: Identifiable {
    
    var id: UUID = UUID()
    var name: String
    var price: String
    var imageName: String
}
