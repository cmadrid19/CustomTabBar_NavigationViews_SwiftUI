//
//  Curse.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import Foundation
import SwiftUI

struct Course: Identifiable {
    var id = UUID().uuidString
    var name: String
    var numCourses: Int
    var asset: String
}

//tab and image names
struct Tab{
    
    let name: String
    let image: String
}

