//
//  CursedCard.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct CourseCard: View {
    
    var course: Course
    var body: some View{
        
        
        
        VStack {
            VStack(alignment: .leading){
                Image(course.asset)
                    .resizable()
                    .renderingMode(.original)
                    .aspectRatio(contentMode: .fit)
                    .padding(.top)
                    .padding(.leading, 10)
                    .background(Color(course.asset))
                
                
                HStack{
                    
                    VStack(alignment: .leading, spacing: 12){
                        Text("\(course.name)")
                            .font(.title3)
                        
                        Text("\(course.numCourses) courses")
                    }
                    .foregroundColor(.black)
                    
                    
                }
                .padding()
                
            }
            
            .background(Color.white)
            .cornerRadius(15)
            
            //or you can use max height in flexible in Grid Item
            
            Spacer(minLength: 0)
        }
    }
}

