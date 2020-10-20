//
//  TabButon.swift
//  CustomTabBarNavigationViews
//
//  Created by Maxim Macari on 20/10/2020.
//

import SwiftUI

struct TabButton: View {
    
    var image: String
    var tagName: String
    
    @Binding var selectedTab: String
    var body: some View{
        
        
        VStack {
            Button(action: {
                
                selectedTab = tagName
                
            }, label: {
                Image(systemName: image)
                    .renderingMode(.template)
                    .foregroundColor(selectedTab == tagName ? Color("tab-selected") : Color.black.opacity(0.4))
                    .padding()
                
                
            })
        }
        .animation(.default)
    }
}
