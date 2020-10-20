//
//  DetailView.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct DetailView: View {
    
    var course: Course
    
    var body: some View{
        
        VStack{
            Text(course.name)
                .font(.title2)
                .fontWeight(.bold)
        }
        .navigationTitle(course.name)
        .navigationBarTitleDisplayMode(.inline)
        .navigationBarItems(trailing:
                                Button(action: {
                                    
                                }, label: {
                                    Image(systemName: "line.horizontal.3")
                                        .renderingMode(.template)
                                        .foregroundColor(.gray)
                                })
        )
    }
}
