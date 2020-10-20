//
//  Home.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct Home: View {
    @State var txt = ""
    @State var edge = UIApplication.shared.windows.first?.safeAreaInsets
    
    var body: some View{
        VStack{
            HStack{
                VStack(alignment: .leading, spacing: 10){
                    
                    Text("Hello Carlos")
                        .font(.title)
                        .fontWeight(.bold)
                    
                    Text("Lets upgradee your skill!")
                    
                }
                .foregroundColor(.black)
                
                Spacer()
                
                Button(action: {
                    
                }, label: {
                    Image(systemName: "person.circle")
                        .resizable()
                        .renderingMode(.original)
                        .frame(width: 50, height: 50)
                })
            }
            .padding()
            
            ScrollView(.vertical, showsIndicators: false){
                //Search bar
                VStack{
                    HStack(spacing: 15){
                        
                        Image(systemName: "magnifyingglass")
                            .foregroundColor(.gray)
                        
                        TextField("Search courses", text: $txt)
                        
                    }
                    .padding(.vertical, 12)
                    .padding(.horizontal)
                    .background(Color.white)
                    .clipShape(Capsule())
                    
                    
                    HStack{
                        Text("Categories")
                            .font(.title2)
                            .fontWeight(.bold)
                        
                        Spacer(minLength: 0)
                        
                        Button(action: {
                            
                        }, label: {
                            Text("View all")
                        })
                    }
                    .foregroundColor(.black)
                    .padding(.top, 25)
                    
                    LazyVGrid(columns: Array(repeating: GridItem(.flexible(), spacing: 20), count: 2), spacing: 20){
                        
                        ForEach(courses){ course in
                            
                            NavigationLink(
                                destination: DetailView(course: course),
                                label: {
                                    
                                CourseCard(course: course)

                                })
                        }
                        
                    }
                }
                .padding()
                .padding(.bottom, edge!.bottom + 70)
            }
        }
        
        
    }
}


